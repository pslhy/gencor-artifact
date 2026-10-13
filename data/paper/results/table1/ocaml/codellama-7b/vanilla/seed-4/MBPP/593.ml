let rec removezero_ip (ip : string) : string = 
    (* remove leading zeroes from the ip address *)
    if ip = "" then "" else
    let first = String.get ip 0 in
    if first = '0' then removezero_ip (String.sub ip 1 (String.length ip - 1)) else 
    ip


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
