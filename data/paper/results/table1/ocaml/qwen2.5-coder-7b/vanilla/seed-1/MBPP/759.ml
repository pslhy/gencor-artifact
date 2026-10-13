let rec is_decimal (num : string) : bool = 
  let rec check_chars acc = function
    | [] -> acc && (num.length = 3 || (num.length = 5 && num.[3] = '.'))
    | '.' :: tl -> acc && (List.length tl = 2)
    | _ :: tl -> check_chars (acc && (Char.of_int (Char.code (List.hd tl)) >= '0' && Char.of_int (Char.code (List.hd tl)) <= '9')) tl
  in
  match List.of_seq (String.to_seq num) with
  | '.' :: _ | _ :: '.' :: _ -> false
  | _ -> check_chars true (List.of_seq (String.to_seq num))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
