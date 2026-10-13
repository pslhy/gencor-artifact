let rec find_max (words : string list) : string =
match words with
| [] -> ""
| [word] -> word
| _ ->
   let max_word = ref (List.hd words) in
   let max_count = ref (List.length (List.sort ~cmp:(fun (x, _) (y, _) -> String.compare x y) (List.count ~key:(fun x -> x) words))) in
   List.iter words ~f:(fun word ->
      let count = List.length (List.sort ~cmp:(fun (x, _) (y, _) -> String.compare x y) (List.count ~key:(fun x -> x) [word])) in
      if count > !max_count then begin
         max_word := word;
         max_count := count;
      end
   );
   !max_word


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
