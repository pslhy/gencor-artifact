let rec find_max (words : string list) : string =
  match words with
  | [] -> ""
  | word :: rest ->
    let num_unique_chars = List.length (get_unique_chars word) in
    let max_num_unique_chars = ref 0 in
    let max_word = ref "" in
    List.iter rest ~f:(fun w ->
      let num_unique_chars' = List.length (get_unique_chars w) in
      if num_unique_chars' > !max_num_unique_chars then (
        max_num_unique_chars := num_unique_chars';
        max_word := w)
      else if num_unique_chars' = !max_num_unique_chars then (
        if word < w then
          max_word := w
      )
    );
    !max_word

and get_unique_chars (s : string) : char list =
  List.filter_map (String.to_list s) ~f:(fun c ->
    if List.mem !(String.to_list s) c ~equal:Char.equal && c <> '-' then Some c
    else None)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
