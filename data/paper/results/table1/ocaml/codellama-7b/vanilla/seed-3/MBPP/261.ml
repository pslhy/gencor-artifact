let rec division_elements (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  let d1 =
    match test_tup1 with
    | (a1, b1, c1, d1) ->
      a1 / b1
  in
  let d2 =
    match test_tup2 with
    | (a2, b2, c2, d2) ->
      a2 / b2
  in
  let d3 = d1 / d2 in
  (d1, d2, d3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and performs mathematical division operation element-wise across the given tuples. *)
