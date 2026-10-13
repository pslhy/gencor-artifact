
let rec bell_Number (n : int) : int = 
    (* base case: B(0) and B(1) are 1 *)
    if n = 0 || n = 1 then
        1
    else
        (* recursive case: B(n) = sum(B(i-1)*B(n-i), 1 <= i <= n) *)
        List.fold_left (fun acc i -> acc + (bell_Number (i-1) * bell_Number (n-i))) 0 [1..(n-1)]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
