(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
let rec removezero_ip (ip : string) : string = 
    let open String in
    if head ip = '0' && (length ip) > 1 then tail ip |> removezero_ip else ip

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:8: Unbound value "head" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec removezero_ip (ip : string) : string =
    if String.length ip > 0 && ip.[0] = '0' then
        removezero_ip (String.sub ip 1 (String.length ip - 1))
    else
        ip

