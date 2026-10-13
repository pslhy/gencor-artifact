let rec is_decimal (num : string) : bool =
  let len = String.length num in
  if len = 0 then false
  else if len = 1 && (num.[0] = '-' || num.[0] = '+') then false
  else
    try
      let pos_decimal_point = String.index num '.' in
      let pos_e = String.index num 'e' in
      let tail = String.sub num (pos_decimal_point + 1) (len - pos_decimal_point - 1) in
      if pos_decimal_point > pos_e then false
      else if String.length tail > 2 then false
      else
        ignore(float_of_string num);
        true
    with
    | Not_found ->
      try
        let pos_e = String.index num 'e' in
        let tail = String.sub num (pos_e + 1) (len - pos_e - 1) in
        if String.length tail > 0 then false
        else
          ignore(float_of_string num);
          true
      with
      | Not_found ->
        try
          ignore(float_of_string num);
          true
        with
        | Failure "float_of_string" -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
