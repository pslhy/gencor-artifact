let rec add_nested_tuples (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  match test_tup1 with
  | [] -> []
  | hd :: tl ->
    match hd with
    | [] ->
      hd :: add_nested_tuples tl test_tup2
    | hd_inner :: hd_tl ->
      (
        if List.length hd_inner != List.length hd_tl then
          raise (Failure "Lists are of different lengths")
        else
          hd_inner @ List.map2 (fun x y -> x + y) hd_inner hd_tl
      ) :: add_nested_tuples tl test_tup2
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise addition of list elements in the given two nested lists. *)
