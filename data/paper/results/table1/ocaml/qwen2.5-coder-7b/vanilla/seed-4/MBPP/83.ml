let rec get_Char (strr : string) : string = 
    let ascii_sum = ref 0 in
    for i = 0 to String.length strr - 1 do
        ascii_sum := !ascii_sum + Char.code (String.get strr i)
    done;
    let result = Char.chr ((!ascii_sum mod 26) + 97) in
    String.make 1 result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
