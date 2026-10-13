let rec removezero_ip (ip : string) : string = 
    let open String in
    if head ip = '0' && (length ip) > 1 then tail ip |> removezero_ip else ip


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
