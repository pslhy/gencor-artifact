let rec trim_tuple (test_list : int list list) (k : int) : int list list =
  match test_list with
  | [] -> []
  | hd :: tl ->
      let rec trim_list (lst : int list) (n : int) : int list =
        match lst with
        | [] -> []
        | hd :: tl when hd < n -> trim_list tl n
        | hd :: tl -> hd :: trim_list tl n
      in
      trim_list hd k :: trim_tuple tl k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
