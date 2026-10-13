(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
let rec move_num (test_str : string) : string =
  let len = String.length test_str in
  let rec helper i counter out_str =
    if i < len then
      if Char.is_digit test_str.[i] then 
        helper i (counter + 1) out_str
      else
        helper (i + 1) counter (out_str ^ String.make 1 test_str.[i])
    else 
      if counter = 0 then out_str
      else out_str ^ String.make counter '0'
  in
  let str_no_num = helper 0 0 "" in
  let len_no_num = String.length str_no_num in
  let str_num = String.make len_no_num '0' in
  let rec helper2 i j =
    if i < len_no_num then
      if Char.is_digit test_str.[i] then 
        helper2 (i + 1) j
      else 
        helper2 (i + 1) (str_num.[j] <- test_str.[i]; j + 1)
    else str_no_num ^ str_num
  in
  helper2 0 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:21:26: Syntax error: strings are immutable, there is no assignment syntax for them. *)
(*     Hint: Mutable sequences of bytes are available in the Bytes module. *)
(*     Hint: Did you mean to use "Bytes.set"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string =
  let len = String.length test_str in
  let rec helper i counter out_str num_str =
    if i < len then
      if Char.is_digit test_str.[i] then 
        Bytes.set num_str counter (test_str.[i]);
        helper i (counter + 1) out_str num_str
      else
        Bytes.set out_str i test_str.[i];
        helper (i + 1) counter out_str num_str
    else 
      if counter = 0 then out_str
      else 
        Bytes.set out_str i '0';
        helper i counter out_str num_str
  in
  let out_str = Bytes.make len '0' in
  let num_str = Bytes.make len '0' in
  ignore(helper 0 0 out_str num_str);
  String.sub out_str 0 (len - String.index_from num_str 0 (Char.escaped '0')) ^ String.sub num_str (String.index_from num_str 0 (Char.escaped '0')) len

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string =
  let len = String.length test_str in
  let rec helper i counter out_str num_str =
    if i < len then
      if Char.is_digit test_str.[i] then
        Bytes.set num_str counter test_str.[i];
        helper i (counter + 1) out_str num_str
      else
        Bytes.set out_str counter test_str.[i];
        helper (i + 1) counter (counter + 1) out_str num_str
    else 
      if counter = 0 then out_str
      else 
        Bytes.set out_str counter '0';
        helper i counter (counter + 1) out_str num_str
  in
  let out_str = Bytes.make len '0' in
  let num_str = Bytes.make len '0' in
  ignore(helper 0 0 0 out_str num_str);
  String.sub out_str 0 (String.index_from num_str 0 (Char.escaped '0')) ^ String.sub num_str (String.index_from num_str 0 (Char.escaped '0')) len

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string =
  let len = String.length test_str in
  let rec helper i counter out_str num_str =
    if i < len then
      if Char.is_digit test_str.[i] then
        Bytes.set num_str counter test_str.[i];
        helper i (counter + 1) out_str num_str
      else
        Bytes.set out_str counter test_str.[i];
        helper (i + 1) counter (counter + 1) out_str num_str
    else 
      if counter = 0 then out_str
      else 
        Bytes.set out_str counter '0';
        helper i counter (counter + 1) out_str num_str
  in
  let out_str = Bytes.make len '0' in
  let num_str = Bytes.make len '0' in
  ignore(helper 0 0 0 out_str num_str);
  String.sub out_str 0 (String.index_from num_str 0 (Char.escaped '0')) ^ String.sub num_str (String.index_from num_str 0 (Char.escaped '0')) len

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string =
  let len = String.length test_str in
  let rec helper i counter out_str num_str =
    if i < len then
      if Char.is_digit test_str.[i] then
        Bytes.set num_str counter test_str.[i];
        helper i (counter + 1) out_str num_str
      else
        Bytes.set out_str counter test_str.[i];
        helper (i + 1) counter (counter + 1) out_str num_str
    else 
      if counter = 0 then out_str
      else 
        Bytes.set out_str counter '0';
        helper i counter (counter + 1) out_str num_str
  in
  let out_str = Bytes.make len '0' in
  let num_str = Bytes.make len '0' in
  ignore(helper 0 0 0 out_str num_str);
  String.sub out_str 0 (String.index_from num_str 0 (Char.escaped '0')) ^ String.sub num_str (String.index_from num_str 0 (Char.escaped '0')) len

