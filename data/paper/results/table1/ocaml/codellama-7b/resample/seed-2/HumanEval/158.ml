(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that accepts a list of strings. *)
(*     The list contains different words. Return the word with maximum number *)
(*     of unique characters. If multiple strings have maximum number of unique *)
(*     characters, return the one which comes first in lexicographical order. *)
(*     >>> find_max ["name"; "of"; "string"] *)
(*     "string" *)
(*     >>> find_max ["name"; "enam"; "game"] *)
(*     "enam" *)
(*     >>> find_max ["aaaaaaa"; "bb"; "cc"] *)
(*     "aaaaaaa" *)
let rec find_max (words : string list) : string =
  match words with
  | [] -> failwith "Empty list"
  | [word] -> word
  | first :: rest ->
    let count = unique_chars first in
    let max = ref count in
    let max_word = ref first in
    List.iter (fun word ->
      let c = unique_chars word in
      if c > !max then (
        max := c;
        max_word := word
      )
    ) rest;
    !max_word

and unique_chars (str : string) : int =
  let set = new CharSet.charcells in
  String.iter (fun c -> CharSet.add c set) str;
  CharSet.cardinal set

let () =
  let inputs = ["name"; "of"; "string"; "name"; "enam"; "game"] in
  let results = List.map (fun words -> find_max words) inputs in
  Printf.printf "inputs: %s\nresults: %s\n" (String.concat ", " inputs)
                                             (String.concat ", " results)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:17: Unbound module "CharSet" *)
(*     Hint: Did you mean "Char"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
  match words with
  | [] -> failwith "Empty list"
  | [word] -> word
  | first :: rest ->
      let count = Char.count word 'a' in
      let max = ref count in
      let max_word = ref first in
      List.iter (fun word ->
          let count = Char.count word 'a' in
          if count > !max then (
              max := count;
              max_word := word)
        ) rest;
      !max_word

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:19: Unbound value "Char.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
  match words with
  | [] -> failwith "Empty list"
  | [word] -> word
  | first :: rest ->
      let count = String.count word 'a' in
      let max = ref count in
      let max_word = ref first in
      List.iter (fun word ->
          let count = String.count word 'a' in
          if count > !max then (
              max := count;
              max_word := word)
        ) rest;
      !max_word

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:19: Unbound value "String.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
  match words with
  | [] -> failwith "Empty list"
  | [word] -> word
  | first :: rest ->
      let count = String.length word in
      let max = ref count in
      let max_word = ref first in
      List.iter (fun word ->
          let count = String.length word in
          if count > !max then (
              max := count;
              max_word := word)
        ) rest;
      !max_word

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:33: Unbound value "word" *)
(*     Hint: Did you mean "words"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
  match words with
  | [] -> failwith "Empty list"
  | [word] -> word
  | first :: rest ->
      let count = String.length first in
      let max = ref count in
      let max_word = ref first in
      List.iter (fun word ->
          let count = String.length word in
          if count > !max then (
              max := count;
              max_word := word)
        ) rest;
      !max_word

