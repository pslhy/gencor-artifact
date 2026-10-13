(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input to this function is a string represented multiple groups for nested parentheses separated by spaces. *)
(*     For each of the group, output the deepest level of nesting of parentheses. *)
(*     E.g. (()()) has maximum two levels of nesting while ((())) has three. *)
(*     >>> parse_nested_parens "(()()) ((())) () ((())()())" *)
(*     [2; 3; 1; 3] *)
let rec parse_nested_parens (paren_string : string) : int list =
  match paren_string with
  | "" -> []
  | _  -> let (group, rest) = split_on_spaces paren_string in
          let level = calculate_depth group in
          level :: (parse_nested_parens rest)

and split_on_spaces (paren_string : string) : (string * string) =
  match String.index_opt paren_string ' ' with
  | Some pos -> (String.sub paren_string 0 pos, String.sub paren_string (pos + 1) (String.length paren_string - pos - 1))
  | None     -> (paren_string, "")

and calculate_depth (group : string) : int =
  let rec helper depth char_list max_depth =
    match char_list with
    | []      -> max_depth
    | '('::xs -> helper (depth + 1) xs (if depth + 1 > max_depth then depth + 1 else max_depth)
    | ')'::xs -> helper (depth - 1) xs max_depth
  in
  helper 0 (String.to_list group) 0

let () = print_int_list (parse_nested_parens "(()()) ((())) () ((())()())")

let print_int_list (lst : int list) : unit =
  let rec helper (lst : int list) : unit =
    match lst with
    | []      -> print_char '\n'
    | hd::tl -> print_int hd; print_char ';'; helper tl
  in
  print_char '['; helper lst; print_char ']'

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:20:13: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parse_nested_parens (paren_string : string) : int list =
  match paren_string with
  | "" -> []
  | _  -> let (group, rest) = split_on_spaces paren_string in
          let level = calculate_depth group in
          level :: (parse_nested_parens rest)

and split_on_spaces (paren_string : string) : (string * string) =
  match String.index_opt paren_string ' ' with
  | Some pos -> (String.sub paren_string 0 pos, String.sub paren_string (pos + 1) (String.length paren_string - pos - 1))
  | None     -> (paren_string, "")

and calculate_depth (group : string) : int =
  let rec helper depth char_list max_depth =
    match char_list with
    | []      -> max_depth
    | '('::xs -> helper (depth + 1) xs (if depth + 1 > max_depth then depth + 1 else max_depth)
    | ')'::xs -> helper (depth - 1) xs max_depth
  in
  helper 0 (List.rev (String.to_seq group |> List.of_seq)) 0

let () = print_int_list (parse_nested_parens "(()()) ((())) () ((())()())")

let print_int_list (lst : int list) : unit =
  let rec helper (lst : int list) : unit =
    match lst with
    | []      -> print_char '\n'
    | hd::tl -> print_int hd; print_char ';'; helper tl
  in
  print_char '['; helper lst; print_char ']'

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:22:10: Unbound value "print_int_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parse_nested_parens (paren_string : string) : int list =
  match paren_string with
  | "" -> []
  | _  -> let (group, rest) = split_on_spaces paren_string in
          let level = calculate_depth group in
          level :: (parse_nested_parens rest)

and split_on_spaces (paren_string : string) : (string * string) =
  match String.index_opt paren_string ' ' with
  | Some pos -> (String.sub paren_string 0 pos, String.sub paren_string (pos + 1) (String.length paren_string - pos - 1))
  | None     -> (paren_string, "")

and calculate_depth (group : string) : int =
  let rec helper depth char_list max_depth =
    match char_list with
    | []      -> max_depth
    | '('::xs -> helper (depth + 1) xs (if depth + 1 > max_depth then depth + 1 else max_depth)
    | ')'::xs -> helper (depth - 1) xs max_depth
  in
  helper 0 (List.rev (String.to_seq group |> List.of_seq)) 0

let () = print_int_list (parse_nested_parens "(()()) ((())) () ((())()())")

let print_int_list (lst : int list) : unit =
  let rec helper (lst : int list) : unit =
    match lst with
    | []      -> print_endline ""
    | hd::tl -> print_int hd; print_string ";"; helper tl
  in
  print_string "["; helper lst; print_string "]"

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:22:10: Unbound value "print_int_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parse_nested_parens (paren_string : string) : int list =
  match paren_string with
  | "" -> []
  | _  -> let (group, rest) = split_on_spaces paren_string in
          let level = calculate_depth group in
          level :: (parse_nested_parens rest)

and split_on_spaces (paren_string : string) : (string * string) =
  match String.index_opt paren_string ' ' with
  | Some pos -> (String.sub paren_string 0 pos, String.sub paren_string (pos + 1) (String.length paren_string - pos - 1))
  | None     -> (paren_string, "")

and calculate_depth (group : string) : int =
  let rec helper depth char_list max_depth =
    match char_list with
    | []      -> max_depth
    | '('::xs -> helper (depth + 1) xs (if depth + 1 > max_depth then depth + 1 else max_depth)
    | ')'::xs -> helper (depth - 1) xs max_depth
  in
  helper 0 (List.rev (String.to_seq group |> List.of_seq)) 0

let () = print_depth_list (parse_nested_parens "(()()) ((())) () ((())()())")

let print_depth_list (lst : int list) : unit =
  let rec helper (lst : int list) : unit =
    match lst with
    | []      -> print_endline ""
    | hd::tl -> print_int hd; print_string ";"; helper tl
  in
  print_string "["; helper lst; print_string "]"

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:22:10: Unbound value "print_depth_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parse_nested_parens (paren_string : string) : int list =
  match paren_string with
  | "" -> []
  | _  -> let (group, rest) = split_on_spaces paren_string in
          let level = calculate_depth group in
          level :: (parse_nested_parens rest)

and split_on_spaces (paren_string : string) : (string * string) =
  match String.index_opt paren_string ' ' with
  | Some pos -> (String.sub paren_string 0 pos, String.sub paren_string (pos + 1) (String.length paren_string - pos - 1))
  | None     -> (paren_string, "")

and calculate_depth (group : string) : int =
  let rec helper depth char_list max_depth =
    match char_list with
    | []      -> max_depth
    | '('::xs -> helper (depth + 1) xs (if depth + 1 > max_depth then depth + 1 else max_depth)
    | ')'::xs -> helper (depth - 1) xs max_depth
  in
  helper 0 (List.rev (String.to_seq group |> List.of_seq)) 0

let () = print_depth_list (parse_nested_parens "(()()) ((())) () ((())()())")

let print_depth_list (lst : int list) : unit =
  let rec helper (lst : int list) : unit =
    match lst with
    | []      -> print_endline ""
    | hd::tl -> print_int hd; print_string ";"; helper tl
  in
  print_string "["; helper lst; print_string "]"

