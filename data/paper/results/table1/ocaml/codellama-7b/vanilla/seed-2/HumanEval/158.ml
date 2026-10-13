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
