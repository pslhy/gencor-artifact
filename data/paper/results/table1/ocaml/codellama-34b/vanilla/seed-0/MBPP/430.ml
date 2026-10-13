let rec parabola_directrix (a : int) (b : int) (c : int) : int =
    if (4 * a * c) > (b * b) then
        let d = (b * b) - (4 * a * c)
        parabola_directrix (a / d) (b / d) (c / d)
    else
        ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
