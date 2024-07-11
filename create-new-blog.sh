#! /bin/bash

path=$(pwd)/source/_posts/$(date +%Y/%m/)
absoluteFilePath=$path$(date +%Y-%m-%d)-.md

if [ ! -d "$path" ]; then
  mkdir -p "$path"
fi

if [ -f "$absoluteFilePath" ];then
  echo "$absoluteFilePath" file already exists.
  exit
fi

(echo ---
echo title:  
echo layout: post
echo commentable: true
echo date: "$(date '+%Y-%m-%d %H:%M:%S')"
echo mathjax: true
echo mermaid: true
echo tags: [Blog]
echo categories: Blog
echo description: 
echo ---) > "$absoluteFilePath"

echo "$absoluteFilePath" file successfully created.