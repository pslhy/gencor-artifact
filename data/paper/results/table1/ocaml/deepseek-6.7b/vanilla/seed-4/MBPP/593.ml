let rec removezero_ip (ip : string) : string =
  match ip with
  | "" -> ""
  | "0" -> ""
  | _ ->
    let first_dot = String.index ip '.' in
    let before_dot, after_dot = String.sub ip 0 first_dot, String.sub ip (first_dot + 1) (String.length ip - first_dot - 1) in
    let rec find_zeros acc (s:string) =
      match s with
      | "" -> (acc, "")
      | "0" -> find_zeros (acc + 1) (String.sub s 1 (String.length s - 1))
      | _ -> (acc, s)
    in let zeros_before, rest = find_zeros 0 before_dot in
    String.make zeros_before '0' ^ rest ^ "." ^ removezero_ip after_dot


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
