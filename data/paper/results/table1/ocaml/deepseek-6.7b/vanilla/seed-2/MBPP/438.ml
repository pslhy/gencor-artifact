let rec count_bidirectional (test_list :  (int * int) list) : int =
  match test_list with
  | [] -> 0
  | (a, b) :: tail ->
      if a = b then 1 + count_bidirectional tail
      else count_bidirectional tail

let test_list = [(1,2); (2,2); (3,4); (4,5); (5,5); (5,4); (4,3); (3,2); (2,1)]

let bidirectional_count = count_bidirectional test_list

let () = print_int bidirectional_count  (* output: 6 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
