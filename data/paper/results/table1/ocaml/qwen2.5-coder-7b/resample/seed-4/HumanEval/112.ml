(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Task *)
(*     We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c *)
(*     then check if the result string is palindrome. *)
(*     A string is called palindrome if it reads the same backward as forward. *)
(*     You should return a tuple containing the result string and true/false for the check. *)
(*     Example *)
(*     >>> reverse_delete "abcde" "ae" *)
(*     ("bcd", false) *)
(*     >>> reverse_delete "abcdef" "b" *)
(*     ("acdef", false) *)
(*     >>> reverse_delete "abcdedcba" "ab" *)
(*     ("cdedc", true) *)
let rec reverse_delete (s : string) (c : string) :  string * bool = 
  let rec delete chars to_remove result = 
    match chars with
    | [] -> List.rev result
    | x::xs -> if not (List.mem x to_remove) then delete xs to_remove (x::result) else delete xs to_remove result
  in
  let filtered = delete (String.to_list s) (String.to_list c) [] in
  let reversed = List.rev filtered in
  let result_string = String.of_list filtered in
  let is_palindrome = result_string = String.of_list reversed in
  (result_string, is_palindrome)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:26: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_delete (s : string) (c : string) :  string * bool = 
  let chars = Array.of_list (List.init (String.length s) (fun i -> s.[i])) in
  let to_remove = Array.of_list (List.init (String.length c) (fun i -> c.[i])) in
  let rec delete i j result =
    if i = -1 then result
    else if not (Array.mem chars.(i) to_remove) then delete (i-1) j (chars.(i)::result)
    else delete (i-1) j result
  in
  let filtered = delete (Array.length chars - 1) 0 [] in
  let reversed = Array.of_list filtered in
  let result_string = String.of_array filtered in
  let is_palindrome = result_string = String.of_array (Array.rev reversed) in
  (result_string, is_palindrome)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:23: Unbound value "String.of_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_delete (s : string) (c : string) :  string * bool = 
  let chars = Array.of_list (List.init (String.length s) (fun i -> s.[i])) in
  let to_remove = Array.of_list (List.init (String.length c) (fun i -> c.[i])) in
  let rec delete i j result =
    if i = -1 then result
    else if not (Array.mem chars.(i) to_remove) then delete (i-1) j (chars.(i)::result)
    else delete (i-1) j result
  in
  let filtered = delete (Array.length chars - 1) 0 [] in
  let reversed = Array.rev filtered in
  let result_string = String.from_chars filtered in
  let is_palindrome = result_string = String.from_chars reversed in
  (result_string, is_palindrome)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:18: Unbound value "Array.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_delete (s : string) (c : string) :  string * bool = 
  let rec delete chars to_remove result = 
    match chars with
    | [] -> result
    | x::xs -> if not (List.mem x to_remove) then delete xs to_remove (x::result) else delete xs to_remove result
  in
  let filtered = delete (String.to_list s) (String.to_list c) [] in
  let reversed = List.rev filtered in
  let result_string = String.of_list filtered in
  let is_palindrome = result_string = String.rev result_string in
  (result_string, is_palindrome)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:26: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_delete (s : string) (c : string) :  string * bool = 
  let rec delete chars to_remove result = 
    match chars with
    | [] -> result
    | x::xs -> if not (List.mem x to_remove) then delete xs to_remove (x::result) else delete xs to_remove result
  in
  let filtered = delete (String.to_seq s |> List.of_seq) (String.to_seq c |> List.of_seq) [] in
  let reversed = List.rev filtered in
  let result_string = String.of_seq filtered in
  let is_palindrome = result_string = String.rev result_string in
  (result_string, is_palindrome)

