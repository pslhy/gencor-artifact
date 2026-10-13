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
  let vowel_replace c = 
    if not (Char.is_alpha c) then c 
    else ('E', 'I', 'A', 'O', 'U', 'e', 'i', 'a', 'o', 'u')
         |> List.map (fun v -> if c = v then v else Char.chr (Char.code c + 2))
         |> List.find (fun c -> c <> 'e' && c <> 'i' && c <> 'a' && c <> 'o' && c <> 'u')
  in
  String.mapi (fun i c -> if i % 2 = 0 then Char.uppercase_ascii c else Char.lowercase_ascii c) message
  |> String.map vowel_replace


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
  let vowel_replace c = 
    if not (Char.is_alpha c) then c 
    else ('E', 'I', 'A', 'O', 'U', 'e', 'i', 'a', 'o', 'u')
         |> List.map (fun v -> if c = v then v else Char.chr (Char.code c + 2))
         |> List.find (fun c -> c <> 'e' && c <> 'i' && c <> 'a' && c <> 'o' && c <> 'u')
  in
  let swap_case c = if Char.is_lower c then Char.uppercase_ascii c else Char.lowercase_ascii c in
  String.mapi (fun i c -> if i % 2 = 0 then swap_case c else c) message
  |> String.map vowel_replace

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
  let vowel_replace c = 
    if not (Char.is_alpha c) then c 
    else 
      let vowels_lower = ['e'; 'i'; 'a'; 'o'; 'u'] in
      let vowels_upper = ['E'; 'I'; 'A'; 'O'; 'U'] in
      if Char.code c > Char.code 'Z' then (
        List.find (fun v -> c = v) vowels_lower
        |> Char.chr ((Char.code c - Char.code 'a' + 2) mod 26 + Char.code 'a')
      )
      else (
        List.find (fun v -> c = v) vowels_upper
        |> Char.chr ((Char.code c - Char.code 'A' + 2) mod 26 + Char.code 'A')
      )
  in
  let swap_case c = if Char.is_lower c then Char.uppercase_ascii c else Char.lowercase_ascii c in
  String.mapi (fun i c -> if i % 2 = 0 then swap_case c else c) message
  |> String.map vowel_replace

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
  let vowel_replace c = 
    if not (Char.is_alpha c) then c 
    else 
      let vowels_lower = ['e'; 'i'; 'a'; 'o'; 'u'] in
      let vowels_upper = ['E'; 'I'; 'A'; 'O'; 'U'] in
      match c with
      | c when List.mem c vowels_lower -> (
            let idx = List.findi (fun _ c -> c = c) vowels_lower in
            List.nth vowels_lower (if idx = 4 then 0 else idx + 2)
          )
      | c when List.mem c vowels_upper -> (
            let idx = List.findi (fun _ c -> c = c) vowels_upper in
            List.nth vowels_upper (if idx = 4 then 0 else idx + 2)
          )
      | _ -> c
  in
  let swap_case c = if Char.is_lower c then Char.uppercase_ascii c else Char.lowercase_ascii c in
  String.mapi (fun i c -> if i % 2 = 0 then swap_case c else c) message
  |> String.map vowel_replace

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
  let vowel_replace c = 
    if not (Char.is_alpha c) then c 
    else 
      let vowels_lower = ['e'; 'i'; 'a'; 'o'; 'u'] in
      let vowels_upper = ['E'; 'I'; 'A'; 'O'; 'U'] in
      match c with
      | c when List.mem c vowels_lower -> (
            let idx = List.findi (fun _ c -> c = c) vowels_lower in
            List.nth vowels_lower (if idx = 4 then 0 else idx + 2)
          )
      | c when List.mem c vowels_upper -> (
            let idx = List.findi (fun _ c -> c = c) vowels_upper in
            List.nth vowels_upper (if idx = 4 then 0 else idx + 2)
          )
      | _ -> c
  in
  let swap_case c = if Char.is_lower c then Char.uppercase_ascii c else Char.lowercase_ascii c in
  String.mapi (fun i c -> if i % 2 = 0 then swap_case c else Char.lowercase_ascii c) message
  |> String.map vowel_replace

