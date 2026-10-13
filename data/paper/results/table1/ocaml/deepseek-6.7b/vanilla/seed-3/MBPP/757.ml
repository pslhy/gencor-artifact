let rec count_reverse_pairs (test_list : string list) : int =
  let aux (str_list : string list) (acc : int) : int =
    match str_list with
    | [] -> acc
    | head :: tail -> 
       let temp = List.fold_left (fun acc el -> if String.rev el = head then acc + 1 else acc) 0 tail in
       aux tail (acc + temp)
  in
  aux test_list 0

(* Example usage *)
let strs = ["abc"; "cba"; "bca"; "bac"; "xyz"; "zyx"; "zyx"; "abc"; "cba"; "bca"; "bac"]

let result = count_reverse_pairs strs;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
