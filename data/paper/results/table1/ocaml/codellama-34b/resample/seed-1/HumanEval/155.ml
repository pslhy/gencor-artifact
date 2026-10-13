(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given an integer. return a tuple that has the number of even and odd digits respectively. *)
(*     Example: *)
(*     >>> even_odd_count (-12) *)
(*     (1, 1) *)
(*     >>> even_odd_count 123 *)
(*     (1, 2) *)
let rec even_odd_count (num : int) :  int * int =
    let (even, odd) = even_odd_count (num / 10) in
    if num mod 2 = 0 then
        (even + 1, odd)
    else
        (even, odd + 1)

let even_odd_count (num : int) :  int * int =
    (0, 0)

let () =
    assert (even_odd_count (-12) = (1, 1));
    assert (even_odd_count 123 = (1, 2));
    assert (even_odd_count 123456789 = (4, 5))

