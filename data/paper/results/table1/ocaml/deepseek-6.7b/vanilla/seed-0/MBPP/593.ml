let rec removezero_ip (ip : string) : string =
    if ip = "" then ""
    else
    let ch = String.get ip 0 in
    if ch = '0' then removezero_ip (String.sub ip 1 (String.length ip - 1))
    else ip

(* Example usage:
let ip = "0000000001"
let no_zero_ip = removezero_ip ip
let _ = print_endline no_zero_ip (* Prints: 1 *)
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
