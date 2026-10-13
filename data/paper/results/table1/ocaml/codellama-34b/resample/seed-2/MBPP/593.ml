(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
let rec removezero_ip (ip : string) : string =
    match ip with
    | "" -> ""
    | _ ->
        let head = String.sub ip 0 1 in
        if head = "0" then removezero_ip (String.sub ip 1 (String.length ip - 1))
        else ip

let removezero ip =
    let addr = removezero_ip ip in
    if addr = "" then "0.0.0.0"
    else addr

