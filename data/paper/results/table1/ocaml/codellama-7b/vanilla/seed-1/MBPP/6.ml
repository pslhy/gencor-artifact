let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
    let diff = a lxor b in
    let bit_pos = 0 in
    while (diff land 1 = 0) && bit_pos < 32 do
        diff <- diff lsr 1;
        bit_pos <- bit_pos + 1;
    done;
    (diff land 1) <> 0 && diff <> 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
