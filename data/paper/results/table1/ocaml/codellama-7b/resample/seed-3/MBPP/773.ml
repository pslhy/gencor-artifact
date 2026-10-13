(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  if pattern = ""
  then raise Not_found;

  if text = pattern then raise Not_found;

  match text with
  | "" -> raise Not_found
  | _ ->
      let text' = String.sub text 1 (String.length text - 1) in
      let pattern' = String.sub pattern 1 (String.length pattern - 1) in
      if text' = pattern' then raise Not_found;
      let found = ref false in
      let start_ind = ref (-1) in
      let end_ind = ref (-1) in
      for i = 0 to (String.length text) - 1 do
        if text.'i = pattern.'0 then
          found := true;
          start_ind := i;
        else
          found := false;
          start_ind := -1;
        end else if text.'i = pattern." string_length pattern - 1 && found then
          end_ind := i+1;
          raise Not_found;
          | Error

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  if pattern = ""
  then raise Not_found;

  if text = pattern then raise Not_found;

  match text with
  | "" -> raise Not_found
  | _ ->
      let text' = String.sub text 1 (String.length text - 1) in
      let pattern' = String.sub pattern 1 (String.length pattern - 1) in
      if text' = pattern' then raise Not_found;
      let found = ref false in
      let start_ind = ref (-1) in
      let end_ind = ref (-1) in
      for i = 0 to (String.length text) - 1 do
        if text.'i = pattern.'0 then
          found := true;
          start_ind := i;
        else
          found := false;
          start_ind := -1;
        end else if text.'i = pattern." string_length pattern - 1 && found then
          end_ind := i+1;
          raise Not_found;
          | Error

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  if pattern = ""
  then raise Not_found;

  if text = pattern then raise Not_found;

  match text with
  | "" -> raise Not_found
  | _ ->
      let text' = String.sub text 1 (String.length text - 1) in
      let pattern' = String.sub pattern 1 (String.length pattern - 1) in
      if text' = pattern' then raise Not_found;
      let found = ref false in
      let start_ind = ref (-1) in
      let end_ind = ref (-1) in
      for i = 0 to (String.length text) - 1 do
        if text.'i = pattern.'0 then
          found := true;
          start_ind := i;
        else
          found := false;
          start_ind := -1;
        end else if text.'i = pattern." string_length pattern - 1 && found then
          end_ind := i+1;
          raise Not_found;

  let (substring, start_index, end_index) = occurance_substring "hello world" "world";;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  if pattern = ""
  then raise Not_found;

  if text = pattern then raise Not_found;

  match text with
  | "" -> raise Not_found
  | _ ->
      let text' = String.sub text 1 (String.length text - 1) in
      let pattern' = String.sub pattern 1 (String.length pattern - 1) in
      if text' = pattern' then raise Not_found;
      let found = ref false in
      let start_ind = ref (-1) in
      let end_ind = ref (-1) in
      for i = 0 to (String.length text) - 1 do
        if text.'i' = pattern.'0' then
          found := true;
          start_ind := i;
        else
          found := false;
          start_ind := -1;
        end else if text.'i' = pattern." string_length pattern - 1 && found then
          end_ind := i+1;
          raise Not_found;

  let (substring, start_index, end_index) = occurance_substring "hello world" "world";;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  if pattern = ""
  then raise Not_found;

  if text = pattern then raise Not_found;

  match text with
  | "" -> raise Not_found
  | _ ->
      let text' = String.sub text 1 (String.length text - 1) in
      let pattern' = String.sub pattern 1 (String.length pattern - 1) in
      if text' = pattern' then raise Not_found;
      let found = ref false in
      let start_ind = ref (-1) in
      let end_ind = ref (-1) in
      for i = 0 to (String.length text) - 1 do
        if text.'i' = pattern.'0' then
          found := true;
          start_ind := i;
        else
          found := false;
          start_ind := -1;
        end else if text.'i' = pattern." string_length pattern - 1 && found then
          end_ind := i+1;
          raise Not_found;

      let substring = String.sub text start_ind (end_ind - start_ind) in
      (substring, start_ind, Some end_ind)

