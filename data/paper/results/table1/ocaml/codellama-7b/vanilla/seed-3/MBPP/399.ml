let rec bitwise_xor (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  let x1, x2, x3, x4 = test_tup1 in
  let y1, y2, y3, y4 = test_tup2 in
  (x1 lxor y1, x2 lxor y2, x3 lxor y3, x4 lxor y4)


let rec bitwise_xor_tuples tups = 
  match tups with
  | tups_head :: rest_tups ->
    let rec helper rest_tups tups_head result =
      match rest_tups with
      | rest_tups_head :: rest_tups_tail -> 
        let result_head =  bitwise_xor tups_head rest_tups_head
        in  helper rest_tups_tail result_head (result @ [result_head])
      | [] -> result
    in
    helper rest_tups tups_head []
  | [] -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform the mathematical bitwise xor operation across the given tuples. *)
