(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
let rec removezero_ip (ip : string) : string =
  match String.explode ip with
  | a :: rest ->
      let rest' = removezero_ip (String.concat "" (rest)) in
      if rest' = "0" then a :: rest'
      else a :: rest'
  | [] -> "";;

let removezero_ip' (ip : string) : string =
  let len = String.length ip in
  let rec checkzero () =
    match len with
    | 0 -> true
    | _ ->
      if ip.[len - 1] = '0' then checkzero ()
      else false
  in
  if checkzero () then removezero_ip ip else ip;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound value "String.explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec removezero_ip (ip : string) : string =
  match ip with
  | a :: rest ->
      let rest' = removezero_ip rest in
      if rest' = "0" then a :: rest'
      else a :: rest'
  | [] -> "";;

