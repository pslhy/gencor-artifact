let rec string_xor (a : string) (b : string) : string = 
  let rec helper a b acc = 
    match a , b with 
    | "" , "" -> List.rev acc 
    | a' , "" -> helper a' "0" acc 
    | "" , b' -> helper "0" b' acc 
    | a' , b' -> helper (String.sub a' 1 (String.length a' - 1))
                     (String.sub b' 1 (String.length b' - 1))
                     ((if a'.[0] = b'.[0] then '0' else '1') :: acc) 
  in 
  String.concat "" @@ helper a b []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
