let rec by_length (arr : int list) : string list =
  match arr with
  | [] -> []
  | h::t -> (match h with
              | 1 -> "One" :: by_length t
              | 2 -> "Two" :: by_length t
              | 3 -> "Three" :: by_length t
              | 4 -> "Four" :: by_length t
              | 5 -> "Five" :: by_length t
              | 6 -> "Six" :: by_length t
              | 7 -> "Seven" :: by_length t
              | 8 -> "Eight" :: by_length t
              | 9 -> "Nine" :: by_length t
              | _ -> by_length t)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of integers, sort the integers that are between 1 and 9 inclusive, *)
(*     reverse the resulting list, and then replace each digit by its corresponding name from *)
(*     "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine". *)
(*     For example: *)
(*     >>> by_length [2; 1; 1; 4; 5; 8; 2; 3] *)
(*     ["Eight"; "Five"; "Four"; "Three"; "Two"; "Two"; "One"; "One"] *)
(*     If the list is empty, return an empty list: *)
(*     >>> by_length [] *)
(*     [] *)
(*     If the list has any strange number ignore it: *)
(*     >>> by_length [1; (-1); 55] *)
(*     ["One"] *)
