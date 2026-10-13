(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
let rec reverse_vowels (str1 : string) : string =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u']
    in
    let rec rev_helper (i : int) (rev_str : string) : string =
        match i < 0 with
        | true -> rev_str
        | false ->
            match str1.(i) in vowels with
            | true ->
                rev_helper (i - 1) (rev_str ^ (str1.[i]))
            | false ->
                rev_helper (i - 1) (rev_str ^ str1.[i])
    in
    rev_helper (String.length str1 - 1) "";;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u']
    in
    let rec rev_helper (i : int) (rev_str : string) : string =
        match i = 0 with
        | true -> rev_str
        | false ->
            match str1.[i] in vowels with
            | true ->
                rev_helper (i - 1) (rev_str ^ (str1.[i]))
            | false ->
                rev_helper (i - 1) (rev_str ^ str1.[i])
    in
    rev_helper (String.length str1 - 1) "";;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string =
  let vowels = ['a'; 'e'; 'i'; 'o'; 'u']
  in
  let rec rev_helper (i : int) (rev_str : string) : string =
    match i = 0 with
    | true -> rev_str
    | false ->
        match str1.[i] in vowels with
        | true ->
            rev_helper (i - 1) (rev_str ^ (str1.[i]))
        | false ->
            rev_helper (i - 1) (rev_str ^ str1.[i])
  in
  rev_helper (String.length str1 - 1) "";;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:24: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string =
  let vowels = ['a'; 'e'; 'i'; 'o'; 'u']
  in
  let rec rev_helper (i : int) (rev_str : string) : string =
    match i = 0 with
    | true -> rev_str
    | false ->
        match str1.[i] in vowels with
        | true ->
            rev_helper (i - 1) (rev_str ^ (str1.[i]))
        | false ->
            rev_helper (i - 1) (rev_str ^ str1.[i])
  in
  rev_helper (String.length str1 - 1) "";;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:24: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_vowels (str1 : string) : string =
  let vowels = ['a'; 'e'; 'i'; 'o'; 'u']
  in
  let rec rev_helper (i : int) (rev_str : string) : string =
    match i = 0 with
    | true -> rev_str
    | false ->
        match str1.[i] in vowels with
        | true ->
            rev_helper (i - 1) (str1.[i] :: rev_str)
        | false ->
            rev_helper (i - 1) (rev_str ^ str1.[i])
  in
  rev_helper (String.length str1) "";;

