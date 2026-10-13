(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  if test_tup1 == test_tup2 then (0, 0, 0, 0)
  else
    let rec loop1 idx elt =
      if idx < 5 then
        if elt = List.nth test_tup2 idx then loop1 (idx + 1) (List.nth test_tup1 (idx + 1))
        else (elt, 0, 0, 0)
      else (0, 0, 0, 0)
    in loop1 1 (List.nth test_tup1 1)

let find_dissimilar_test =
  List.for_all (fun (test_tup1, test_tup2) ->
      let expected = (0, 0, 0, 0) in
      let actual = find_dissimilar test_tup1 test_tup2 in
      expected = actual)
    [((0, 0, 0, 0), (0, 0, 0, 0));
     ((1, 2, 3, 4), (1, 2, 3, 4));
     ((1, 2, 3, 4), (1, 2, 3, 5));
     ((1, 2, 3, 4), (1, 2, 4, 5));
     ((1, 2, 3, 4), (1, 5, 4, 5));
     ((1, 2, 3, 4), (5, 6, 7, 8))]

