let rec and_tuples (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
    match test_tup1, test_tup2 with
    | x, y when x = y -> Some (x * y / 2)
    | _, _ -> None

let get_elementwise_tuples (test_tup1 : int * int * int * int) (test_tup2 : int * int * int * int) : int * int * int * int =
    match test_tup1, test_tup2 with
    | (x1, y1, z1, w1), (x2, y2, z2, w2) -> (x1 + x2, y1 + y2, z1 + z2, w1 + w2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the elementwise and tuples from the given two tuples. *)
