
let rec count_reverse_pairs (test_list : string list) : int = 
  let rec helper (lst : string list) (count : int) : int = 
    match lst with
    | [] -> count
    | x :: xs -> 
        let filtered = List.filter (fun y -> y = (String.concat "" (List.rev (String.to_seq x)))) xs in
        helper xs (count + List.length filtered)
  in
  helper test_list 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
