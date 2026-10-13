let rec median_numbers (a : int) (b : int) (c : int) : float =
    if a <> b && b <> c && a <> c then
        if (a - b) * (c - a) >= 0 then
            float(a)
        else if (b - a) * (c - b) >= 0 then
            float(b)
        else
            float(c)
    else
        float(a + b + c) /. 3.0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
