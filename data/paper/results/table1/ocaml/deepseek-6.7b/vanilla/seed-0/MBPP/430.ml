let rec parabola_directrix (a : int) (b : int) (c : int) : int =
    if a = 0 then b
    else if b = 0 then parabola_directrix a 0 (c - (a * (b * b)))
    else if a < 0 then parabola_directrix (-a) (-b) c
    else begin
        let p = b * b in
        let q = 4 * a * c in
        if p < q then b
        else begin
            let d = int_of_float (sqrt (float_of_int (q - p))) in
            let e = (d * d) - (4 * a * b) in
            if e > 0 then (b + d) / (2 * a)
            else if e < 0 then (b - d) / (2 * a)
            else b / (2 * a)
        end
    end ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
