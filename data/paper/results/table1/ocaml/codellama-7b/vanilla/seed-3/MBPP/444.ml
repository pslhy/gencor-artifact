let rec trim_tuple (test_list : int list list) (k : int) : int list list =
  match test_list with
  | [] -> []
  | h :: t -> (trim_list h k) :: (trim_tuple t k);;

and trim_list (test_list : int list) (k : int) : int list =
  let rec trim_list_rec (test_list : int list) (k : int) (i : int) : int list =
    match test_list with
    | [] -> []
    | h :: t ->
      if i < k then
        h :: (trim_list_rec t k (i + 1))
      else
        trim_list_rec t k (i + 1)
  in
  trim_list_rec test_list k 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
