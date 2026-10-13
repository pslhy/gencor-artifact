(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
let rec next_Perfect_Square (n : int) : int =
    if (n <= 1) then begin
        n
    end
    else begin
        let sq : int = (next_Perfect_Square (n - 1)) * (next_Perfect_Square (n - 1)) in
        if (sq > n) then begin
            sq
        end
        else begin
            n
        end
    end

