(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
let rec check_integer (text : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let is_sign c = c = '+' || c = '-' in
  let is_empty s = s = "" in
  
  let trim s =
    let rec trim_left s = if is_space (String.get s 0) then trim_left (String.sub s 1 (String.length s - 1)) else s in
    let rec trim_right s = if is_space (String.get s ((String.length s) - 1)) then trim_right (String.sub s 0 (String.length s - 1)) else s in
    trim_left (trim_right s) in

  let is_space c = c = ' ' in

  let rec check_start=start_with text; 
    if start_with "+" text then check_start (String.sub text 1 ((String.length text) - 1));
    if start_with "-" text then check_start (String.sub text 1 ((String.length text) - 1));
  in

  let is_integer s = 
    let s' = trim s in
    if is_empty s' then false else
      let first_char = String.get s' 0 in
      if (is_sign first_char || is_digit first_char) then
        let rec check_remaining rest = 
          if is_empty rest then true else
            if is_digit (String.get rest 0) then check_remaining (String.sub rest 1 ((String.length rest) - 1)) else false
        in check_remaining (String.sub s' 1 ((String.length s') - 1))
      else false
  in

  is_integer text       

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:30: Unbound value "is_space" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_integer (text : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let is_sign c = c = '+' || c = '-' in
  let is_empty s = s = "" in
  
  let trim s =
    let rec trim_left s = if Char.equal (String.get s 0) ' ' then trim_left (String.sub s 1 ((String.length s) - 1)) else s in
    let rec trim_right s = if Char.equal (String.get s ((String.length s) - 1)) ' ' then trim_right (String.sub s 0 (String.length s - 1)) else s in
    trim_left (trim_right s) in

  let is_space c = c = ' ' in

  let rec check_start=start_with text; 
    if start_with "+" text then check_start (String.sub text 1 ((String.length text) - 1));
    if start_with "-" text then check_start (String.sub text 1 ((String.length text) - 1));
  in

  let is_integer s = 
    let s' = trim s in
    if is_empty s' then false else
      let first_char = String.get s' 0 in
      if (is_sign first_char || is_digit first_char) then
        let rec check_remaining rest = 
          if is_empty rest then true else
            if is_digit (String.get rest 0) then check_remaining (String.sub rest 1 ((String.length rest) - 1)) else false
        in check_remaining (String.sub s' 1 ((String.length s') - 1))
      else false
  in

  is_integer text       
``
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:31:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_integer (text : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let is_sign c = c = '+' || c = '-' in
  let is_empty s = s = "" in
  
  let trim s =
    let rec trim_left s = if Char.equal (String.get s 0) ' ' then trim_left (String.sub s 1 ((String.length s) - 1)) else s in
    let rec trim_right s = if Char.equal (String.get s ((String.length s) - 1)) ' ' then trim_right (String.sub s 0 (String.length s - 1)) else s in
    trim_left (trim_right s) in

  let is_space c = c = ' ' in

  let rec check_start s = 
    if String.start_with "+" s then check_start (String.sub s 1 ((String.length s) - 1));
    if String.start_with "-" s then check_start (String.sub s 1 ((String.length s) - 1));
  in

  let is_integer s = 
    let s' = trim s in
    if is_empty s' then false else
      let first_char = String.get s' 0 in
      if (is_sign first_char || is_digit first_char) then
        let rec check_remaining rest = 
          if is_empty rest then true else
            if is_digit (String.get rest 0) then check_remaining (String.sub rest 1 ((String.length rest) - 1)) else false
        in check_remaining (String.sub s' 1 ((String.length s') - 1))
      else false
  in

  is_integer text       

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:8: Unbound value "String.start_with" *)
(*     Hint: Did you mean "starts_with"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_integer (text : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let is_sign c = c = '+' || c = '-' in
  let is_empty s = s = "" in
  
  let trim s =
    let rec trim_left s = if Char.equal (String.get s 0) ' ' then trim_left (String.sub s 1 ((String.length s) - 1)) else s in
    let rec trim_right s = if Char.equal (String.get s ((String.length s) - 1)) ' ' then trim_right (String.sub s 0 (String.length s - 1)) else s in
    trim_left (trim_right s) in

  let is_space c = c = ' ' in

  let rec check_start s = 
    if String.starts_with "++" s then check_start (String.sub s 2 ((String.length s) - 2));
    if String.starts_with "+-" s then check_start (String.sub s 2 ((String.length s) - 2));
  in

  let is_integer s = 
    let s' = trim s in
    if is_empty s' then false else
      let first_char = String.get s' 0 in
      if (is_sign first_char || is_digit first_char) then
        let rec check_remaining rest = 
          if is_empty rest then true else
            if is_digit (String.get rest 0) then check_remaining (String.sub rest 1 ((String.length rest) - 1)) else false
        in check_remaining (String.sub s' 1 ((String.length s') - 1))
      else false
  in

  is_integer text       

