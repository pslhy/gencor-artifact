(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a string s and a natural number n, you have been tasked to implement *)
(*     a function that returns a list of all words from string s that contain exactly *)
(*     n consonants, in order these words appear in the string s. *)
(*     If the string s is empty then the function should return an empty list. *)
(*     Note: you may assume the input string contains only letters and spaces. *)
(*     Examples: *)
(*     >>> select_words "Mary had a little lamb" 4 *)
(*     ["little"] *)
(*     >>> select_words "Mary had a little lamb" 3 *)
(*     ["Mary"; "lamb"] *)
(*     >>> select_words "simple white space" 2 *)
(*     [] *)
(*     >>> select_words "Hello world" 4 *)
(*     ["world"] *)
(*     >>> select_words "Uncle sam" 3 *)
(*     ["Uncle"] *)
let rec select_words (s : string) (n : int) : string list =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
        match s with 
        | "" -> []
        | _ -> 
            let getConsonants s = 
                String.to_list s
                |> List.filter (fun c -> not (List.mem c vowels)) 
                |> List.length 
            in
            let rec split_string s = 
                match s with
                | "" -> []
                | s -> let len = String.length s in
                       let rec split_word w l =
                         match w with
                         | "" -> List.rev l
                         | w -> split_word (String.sub w 1 (len - 1)) ((String.sub w 0 1)::l) 
                       in
                       let hd = split_word s [] in
                       hd :: split_string (String.sub s (String.length hd) (String.length s - String.length hd))
            in
            split_string s
            |> List.filter (fun w -> (getConsonants w) = n) 
            |> List.map (fun c -> String.trim c)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:17: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    match s with 
    | "" -> []
    | _ -> 
        let getConsonants s = 
            List.filter (fun c -> not (List.mem c vowels)) (String.to_list s)
            |> List.length 
        in
        let rec split_string s = 
            match s with
            | "" -> []
            | s -> let len = String.length s in
                   let rec split_word w l =
                     match w with
                     | "" -> List.rev l
                     | w -> split_word (String.sub w 1 (len - 1)) ((String.sub w 0 1)::l) 
                   in
                   let hd = split_word s [] in
                   hd :: split_string (String.sub s (String.length hd) (String.length s - String.length hd))
        in
        split_string s
        |> List.filter (fun w -> (getConsonants w) = n) 
        |> List.map (fun c -> String.trim c)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:61: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    match s with 
    | "" -> []
    | _ -> 
        let getConsonants s = 
            List.filter (fun c -> not (List.mem c vowels)) (String.to_list s)
            |> List.length 
        in
        let rec split_string s = 
            match s with
            | "" -> []
            | s -> let len = String.length s in
                   let rec split_word w l =
                     match w with
                     | "" -> List.rev l
                     | w -> split_word (String.sub w 1 (len - 1)) ((String.sub w 0 1)::l) 
                   in
                   let hd = split_word s [] in
                   hd :: split_string (String.sub s (String.length hd) (String.length s - String.length hd))
        in
        split_string s
        |> List.filter (fun w -> (getConsonants w) = n) 
        |> List.map (fun c -> String.trim c)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:61: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    match s with 
    | "" -> []
    | _ -> 
        let getConsonants s = 
            List.filter (fun c -> not (List.mem c vowels)) (String.to_list s)
            |> List.length 
        in
        let rec split_string s = 
            match s with
            | "" -> []
            | s -> let len = String.length s in
                   let rec split_word w l =
                     match w with
                     | "" -> List.rev l
                     | w -> split_word (String.sub w 1 (len - 1)) ((String.sub w 0 1)::l) 
                   in
                   let hd = split_word s [] in
                   hd :: split_string (String.sub s (String.length hd) (String.length s - String.length hd))
        in
        split_string s
        |> List.filter (fun w -> (getConsonants w) = n) 
        |> List.map (fun c -> String.trim c)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:61: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec select_words (s : string) (n : int) : string list =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'; ' '] in
    match s with 
    | "" -> []
    | _ -> 
        let countConsonants s = 
            s
            |> String.to_seq
            |> Seq.filter (fun c -> not (List.mem c vowels)) 
            |> Seq.length 
        in
        let rec split_string s = 
            match s with
            | "" -> []
            | s -> let len = String.length s in
                   let rec split_word w l =
                     match w with
                     | "" -> List.rev l
                     | w -> split_word (String.sub w 1 (len - 1)) ((String.sub w 0 1)::l) 
                   in
                   let hd = split_word s [] in
                   hd :: split_string (String.sub s (String.length hd) (String.length s - String.length hd))
        in
        split_string s
        |> List.filter (fun w -> (countConsonants w) = n) 
        |> List.map (fun c -> String.trim c)

