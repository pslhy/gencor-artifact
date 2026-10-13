let rec catalan_number (num : int) : int =
    if num <= 1 then 1
    else
        let rec loop (i : int) (res : int) : int =
            if i > num then res
            else loop (i+1) ((res*2*(2*i+1))/(i+2))
        in
        loop 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which returns nth catalan number. *)
