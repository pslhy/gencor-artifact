let rec parabola_directrix (a : int) (b : int) (c : int) : int =
    match (a, b, c) with
    | (a, _, _) when a = 0 ->
        failwith "Invalid parameters for a parabola equation: a cannot be 0"
    | (_, b, _) when b = 0 ->
        failwith "Invalid parameters for a parabola equation: b cannot be 0"
    | (_, _, c) -> -c / b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
