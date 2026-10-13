let rec count_Set_Bits (n : int) : int = 
    if n = 0 then
        0
    else
        (n land 1) + count_Set_Bits(n lsr 1)

let () = 
    (* Test cases *)
    assert (count_Set_Bits(0) = 0);
    assert (count_Set_Bits(1) = 1);
    assert (count_Set_Bits(2) = 1);
    assert (count_Set_Bits(3) = 2);
    assert (count_Set_Bits(4) = 1);
    assert (count_Set_Bits(5) = 2);
    assert (count_Set_Bits(6) = 2);
    assert (count_Set_Bits(7) = 3);
    assert (count_Set_Bits(8) = 1);
    assert (count_Set_Bits(15) = 4);
    assert (count_Set_Bits(16) = 1);
    assert (count_Set_Bits(31) = 5);
    assert (count_Set_Bits(32) = 1);
    (* End of test cases *)  


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of set bits (binary digits with value 1) in a given number. *)
