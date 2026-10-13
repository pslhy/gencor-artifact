(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes a message, and encodes in such a *)
(*     way that it swaps case of all letters, replaces all vowels in *)
(*     the message with the letter that appears 2 places ahead of that *)
(*     vowel in the english alphabet. *)
(*     Assume only letters. *)
(*     Examples: *)
(*     >>> encode "test" *)
(*     "TGST" *)
(*     >>> encode "This is a message" *)
(*     "tHKS KS C MGSSCGG" *)
let rec encode (message : string) : string = 
  let rec helper (msg : string) (acc : string) : string = 
    match msg with
    | "" -> acc
    | c :: cs -> 
        let new_char = 
          match c with
          | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> 
              let base = if c >= 'a' && c <= 'z' then 'a' else 'A' in
              let new_idx = (Char.code c - Char.code base + 2) mod 26 in
              Char.chr (Char.code base + new_idx)
          | _ -> 
              if c >= 'a' && c <= 'z' then Char.chr (Char.code c + 32)
              elif c >= 'A' && c <= 'Z' then Char.chr (Char.code c - 32)
              else c
        in
        helper cs (acc ^ (String.make 1 new_char))
  in
  helper message ""

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:41: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string = 
  let rec helper (msg : string) (acc : string) : string = 
    match msg with
    | "" -> acc
    | c :: cs -> 
        let new_char = 
          match c with
          | 'a' | 'e' | 'i' | 'o' | 'u' ->
              let new_idx = (Char.code c - 97 + 2) mod 26 in
              Char.chr (new_idx + 97)
          | 'A' | 'E' | 'I' | 'O' | 'U' ->
              let new_idx = (Char.code c - 65 + 2) mod 26 in
              Char.chr (new_idx + 65)
          | _ -> 
              if c >= 'a' && c <= 'z' then Char.chr (Char.code c + 32)
              elif c >= 'A' && c <= 'Z' then Char.chr (Char.code c - 32)
              else c
        in
        helper cs (acc ^ (String.make 1 new_char))
  in
  helper message ""

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:41: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string = 
  let rec helper (msg : string) (acc : string) : string = 
    match msg with
    | "" -> acc
    | c :: cs -> 
        let new_char = 
          match c with
          | 'a' | 'e' | 'i' | 'o' | 'u' ->
              let new_idx = (Char.code c - 97 + 2) mod 26 in
              Char.chr (new_idx + 97)
          | 'A' | 'E' | 'I' | 'O' | 'U' ->
              let new_idx = (Char.code c - 65 + 2) mod 26 in
              Char.chr (new_idx + 65)
          | _ -> 
              if c >= 'a' && c <= 'z' then Char.chr (Char.code c + 32)
              elif c >= 'A' && c <= 'Z' then Char.chr (Char.code c - 32)
              else c
        in
        helper cs (acc ^ (String.make 1 new_char))
  in
  helper message ""

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:41: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string = 
  let rec helper (msg : string) (acc : string) : string = 
    match msg with
    | "" -> acc
    | c :: cs -> 
        let new_char = 
          match c with
          | 'a' | 'e' | 'i' | 'o' | 'u' ->
              let new_idx = (Char.code c - 97 + 2) mod 26 in
              Char.chr (new_idx + 97)
          | 'A' | 'E' | 'I' | 'O' | 'U' ->
              let new_idx = (Char.code c - 65 + 2) mod 26 in
              Char.chr (new_idx + 65)
          | _ -> 
              if c >= 'a' && c <= 'z' then Char.chr (Char.code c + 32)
              elif c >= 'A' && c <= 'Z' then Char.chr (Char.code c - 32)
              else c
        in
        helper cs (acc ^ (String.make 1 new_char))
  in
  helper message ""

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:41: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string = 
  let rec helper (msg : string) (acc : string) : string = 
    match msg with
    | "" -> acc
    | c :: cs -> 
        let new_char = 
          match c with
          | 'a' -> 'c'
          | 'e' -> 'g'
          | 'i' -> 'k'
          | 'o' -> 'q'
          | 'u' -> 'w'
          | 'A' -> 'C'
          | 'E' -> 'G'
          | 'I' -> 'K'
          | 'O' -> 'Q'
          | 'U' -> 'W'
          | _ -> 
              if c >= 'a' && c <= 'z' then Char.chr (Char.code c + 32)
              else if c >= 'A' && c <= 'Z' then Char.chr (Char.code c - 32)
              else c
        in
        helper cs (acc ^ (String.make 1 new_char))
  in
  helper message ""

