let rec removezero_ip (ip : string) : string = 
  let rec check_zeroes = function
    | "" -> ""
    | "0" -> check_zeroes ""
    | str -> str in
  let rec split_ip rest current acc =
    match rest with
    | "" -> List.rev (current :: acc)
    | _ when current = "" -> split_ip (String.sub rest 1 (String.length rest - 1)) "" acc
    | _ -> split_ip (String.sub rest 1 (String.length rest - 1)) (current ^ (String.sub rest 0 1)) acc in
  let parts = split_ip ip "" [] in
  let cleaned_parts = List.map check_zeroes parts in
  String.concat "." cleaned_parts


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
