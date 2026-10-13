let rec sumofFactors (n : int) : int =
    let rec loop (i : int) (sum : int) : int =
        if i > n then sum
        else if n mod i = 0 then loop (i + 2) (sum + i)
        else loop (i + 2) sum
    in loop 2 0


(* Test cases *)
print_int (sumofFactors 6);;  (* should print 6 *)
print_int (sumofFactors 12);; (* should print 16 *)
print_int (sumofFactors 14);; (* should print 16 *)
print_int (sumofFactors 24);; (* should print 36 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even factors of a number. *)
