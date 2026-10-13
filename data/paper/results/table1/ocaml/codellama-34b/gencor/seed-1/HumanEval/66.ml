
let rec digitSum (s : string) : int =
    let asc (c : char) : int =
        Int.of_float (Char.escaped c)
    in
    let rec aux (acc : int) (s : string) : int =
        if s = "" then
            acc
        else
            let c = s.[0] in
            if asc c >= 65 && asc c <= 90 then
                aux (acc + asc c) (String.sub s 1 (String.length s - 1))
            else
                aux acc (String.sub s 1 (String.length s - 1))
    in
    aux 0 s

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Task *)
(*     Write a function that takes a string as input and returns the sum of the upper characters only' *)
(*     ASCII codes. *)
(*     Examples: *)
(*     >>> digitSum "" *)
(*     0 *)
(*     >>> digitSum "abAB" *)
(*     131 *)
(*     >>> digitSum "abcCd" *)
(*     67 *)
(*     >>> digitSum "helloE" *)
(*     69 *)
(*     >>> digitSum "woArBld" *)
(*     131 *)
(*     >>> digitSum "aAaaaXa" *)
(*     153 *)
