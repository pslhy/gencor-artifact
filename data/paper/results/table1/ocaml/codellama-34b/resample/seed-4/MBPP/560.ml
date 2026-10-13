(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list = 
    let rec help unit1 unit2 acc = 
        match unit1 with
        | [] -> unit2 @ acc
        | h1 :: t1 ->
            if List.mem h1 test_tup2 then help t1 unit2 acc
            else help t1 unit2 (h1 :: acc)
    in
    help test_tup1 test_tup2 [] |> List.rev

