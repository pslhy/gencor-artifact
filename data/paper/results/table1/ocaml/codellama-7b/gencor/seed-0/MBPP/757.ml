
let rec count_reverse_pairs (test_list : string list) : int =
  match test_list with
  | [] -> 0
  | hd :: tl ->
      if List.mem (String.map (fun c -> Char.chr (256 - (Char.code c))) hd) tl
      then 1 + count_reverse_pairs tl
      else count_reverse_pairs tl

let () =
  assert (count_reverse_pairs ["hello"] = 0)
  ; assert (count_reverse_pairs ["hello"; "lohl"] = 1)
  ; assert (count_reverse_pairs ["hello"; "lohl"; "lloh"] = 2)
  ; assert (count_reverse_pairs [] = 0)
  ; assert (count_reverse_pairs ["hello"; "lloh"] = 1)
  ; assert (count_reverse_pairs ["hello"; "helleo"] = 1)
  ; assert (count_reverse_pairs ["hello"; "lloh"; "lolh"] = 2)
  ; assert (count_reverse_pairs ["hello"; "lolh"; "llhoh"] = 3)
  ; assert (count_reverse_pairs ["hello"; "lolh"; "lohl"; "lloh"] = 4)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
