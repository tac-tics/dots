use std::path::PathBuf;
use std::env;
use std::process::{Command, Stdio};
use clap::Parser;

#[derive(Parser, Debug)]
struct Args {
    #[command(subcommand)]
    command: Option<Subcommand>,

    target: Option<String>,
}

#[derive(clap::Subcommand, Debug)]
enum Subcommand {
    #[command(name="--complete")]
    Complete {
        #[arg(long)]
        cword: usize,
        #[arg(long)]
        line: Vec<String>,
        words: Vec<String>,
    },
    #[command(name="--clone")]
    Clone {
        url: String,
    },
    #[command(name="--fetch")]
    Fetch {
        name: Option<String>,
    },
}

fn main() {
    let args = Args::parse();

    match args.command {
        None => match args.target {
            None => println!("cd $REPOS"),
            Some(dirname) => println!("cd $REPOS/{dirname}"),
        },
        Some(Subcommand::Clone { url }) => {
            let repo_dir = env::var("REPOS").unwrap();
            std::env::set_current_dir(repo_dir).unwrap();
            let mut child = Command::new("git")
                .arg("clone")
                .arg(url)
                .stdout(Stdio::inherit())
                .stderr(Stdio::inherit())
                .spawn()
                .unwrap();
            child.wait().unwrap();
        },
        Some(Subcommand::Complete { cword, words, .. }) => {
            let current_word: String = if let Some(word) = words.get(cword) {
                word.clone()
            } else {
                "".to_string()
            };

            if current_word.starts_with("-") {
                println!("--clone");
                println!("--fetch");
            } else {
                let repos: Vec<String> = list_repos()
                    .into_iter()
                    .filter(|path| path.starts_with(&current_word) || current_word == "")
                    .collect();

                for path in repos {
                    println!("{path}");
                }
            }
        },
        Some(Subcommand::Fetch { name }) => {
            if let Some(name) = name {
                fetch_repo(&name);
            } else {
                for repo in list_repos() {
                    eprintln!("Fetching {repo}");
                    fetch_repo(&repo);
                }
            }
        }
    }
}

fn fetch_repo(name: &str) {
    let repos_dir = env::var("REPOS").unwrap();
    let repo_dir = format!("{repos_dir}/{name}");

    let mut child = Command::new("git")
        .arg("-C")
        .arg(repo_dir)
        .arg("fetch")
        .stdout(Stdio::inherit())
        .stderr(Stdio::inherit())
        .spawn()
        .unwrap();
    child.wait().unwrap();
}

fn list_repos() -> Vec<String> {
    let repos_dir = env::var("REPOS").unwrap();
    std::fs::read_dir(repos_dir)
        .unwrap()
        .into_iter()
        .map(|path| {
            let path: &PathBuf = &path.unwrap().path();
            path.file_name().unwrap().to_str().unwrap().to_string()
        })
        .collect()
}
