
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    if (k <= 1) then begin
        let (result, _) = reverse_Array_Upto_K input (k+1)
    in
        (result, k)
    end
    else begin
        let (result, pos) = reverse_Array_Upto_K input (k-1)
        in (if pos = k then result@[] else result.(k-pos-1)::result)
    end

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
