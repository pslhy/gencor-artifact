let rec division_elements (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  match test_tup1, test_tup2 with
  | (a1, b1, c1, d1), (a2, b2, c2, d2) ->
      let (aa1,bb1,cc1,dd1) = (a1/a2, b1/b2, c1/c2, d1/d2) in
      (aa1, bb1, cc1, dd1)

(* Test Case *)

let test_tup1 = 10,20,30,40
let test_tup2 = 2,5,3,1

let () =
  let result = division_elements test_tup1 test_tup2 in
  Format.printf "Result: %d %d %d %d@." (fst result) (fst (snd result))
              (fst (snd (snd result))) (snd (snd (snd result)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and performs mathematical division operation element-wise across the given tuples. *)
