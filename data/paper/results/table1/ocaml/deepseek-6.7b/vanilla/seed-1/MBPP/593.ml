let rec removezero_ip (ip : string) : string =
  match ip with
  | "" -> ""
  | "." :: rest -> "." ^ removezero_ip (String.sub rest 1 (String.length rest))
  | _ :: rest -> 
    if ip.[0] = '0' then
      removezero_ip (String.sub ip 1 (String.length ip))
    else 
      ip


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
