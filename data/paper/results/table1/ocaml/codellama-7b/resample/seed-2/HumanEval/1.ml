(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input to this function is a string containing multiple groups of nested parentheses. Your goal is to *)
(*     separate those group into separate strings and return the list of those. *)
(*     Separate groups are balanced (each open brace is properly closed) and not nested within each other *)
(*     Ignore any spaces in the input string. *)
(*     >>> separate_paren_groups "( ) (( )) (( )( ))" *)
(*     ["()"; "(())"; "(()())"] *)
let rec separate_paren_groups (paren_string : string) : string list =
  let open String in
  match paren_string with
  | "" -> []
  | _ when is_valid_group paren_string -> [paren_string]
  | _ ->
    let open_idx = index paren_string '(' in
    let close_idx = rindex paren_string ')' in
    let open_grp = prefix paren_string open_idx in
    let close_grp = suffix paren_string close_idx in
    let nested_group = sub paren_string (open_idx + 1) (close_idx - open_idx - 1) in
    let remaining_string = sub paren_string (close_idx + 1) (length paren_string - close_idx - 1) in
    let nested_groups = separate_paren_groups nested_group in
    (open_grp :: nested_groups) @ (separate_paren_groups remaining_string)
and is_valid_group (paren_string : string) : bool =
  let open String in
  let stack = ref [] in
  let i = ref 0 in
  while !i < length paren_string do
    match get paren_string !i with
    | '(' -> stack := '(' :: !stack
    | ')' ->
      if !stack = [] then raise (Failure "Uneven number of parentheses")
      else stack := tl !stack
    | _ -> ()
    done;
  !stack = []
in
separate_paren_groups

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:20: Unbound value "prefix" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
  let open String in
  match paren_string with
  | "" -> []
  | _ when is_valid_group paren_string -> [paren_string]
  | _ ->
    let open_idx = index paren_string '(' in
    let close_idx = rindex paren_string ')' in
    let open_grp = prefix paren_string open_idx in
    let close_grp = suffix paren_string close_idx in
    let nested_group = sub paren_string (open_idx + 1) (close_idx - open_idx - 1) in
    let remaining_string = sub paren_string (close_idx + 1) (length paren_string - close_idx - 1) in
    let nested_groups = separate_paren_groups nested_group in
    (open_grp :: nested_groups) @ (separate_paren_groups remaining_string)
and is_valid_group (paren_string : string) : bool =
  let open String in
  let stack = ref [] in
  let i = ref 0 in
  while !i < length paren_string do
    match get paren_string !i with
    | '(' -> stack := '(' :: !stack
    | ')' ->
      if !stack = [] then raise (Failure "Uneven number of parentheses")
      else stack := tl !stack
    | _ -> ()
    done;
  !stack = []
in
separate_paren_groups

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:20: Unbound value "prefix" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
  let open String in
  match paren_string with
  | "" -> []
  | _ when is_valid_group paren_string -> [paren_string]
  | _ ->
    let open_idx = index paren_string '(' in
    let close_idx = rindex paren_string ')' in
    let open_grp = prefix paren_string open_idx in
    let close_grp = suffix paren_string close_idx in
    let nested_group = sub paren_string (open_idx + 1) (close_idx - open_idx - 1) in
    let remaining_string = sub paren_string (close_idx + 1) (length paren_string - close_idx - 1) in
    let nested_groups = separate_paren_groups nested_group in
    (open_grp :: nested_groups) @ (separate_paren_groups remaining_string)
and is_valid_group (paren_string : string) : bool =
  let open String in
  let stack = ref [] in
  let i = ref 0 in
  while !i < length paren_string do
    match get paren_string !i with
    | '(' -> stack := '(' :: !stack
    | ')' ->
      if !stack = [] then raise (Failure "Uneven number of parentheses")
      else stack := tl !stack
    | _ -> ()
    done;
  !stack = []
in
separate_paren_groups

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:20: Unbound value "prefix" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
  let open String in
  match paren_string with
  | "" -> []
  | _ when is_valid_group paren_string -> [paren_string]
  | _ ->
    let open_idx = index paren_string '(' in
    let close_idx = rindex paren_string ')' in
    let open_grp = prefix paren_string open_idx in
    let close_grp = suffix paren_string close_idx in
    let nested_group = sub paren_string (open_idx + 1) (close_idx - open_idx - 1) in
    let remaining_string = sub paren_string (close_idx + 1) (length paren_string - close_idx - 1) in
    let nested_groups = separate_paren_groups nested_group in
    (open_grp :: nested_groups) @ (separate_paren_groups remaining_string)
and is_valid_group (paren_string : string) : bool =
  let open String in
  let stack = ref [] in
  let i = ref 0 in
  while !i < length paren_string do
    match get paren_string !i with
    | '(' -> stack := '(' :: !stack
    | ')' ->
      if !stack = [] then raise (Failure "Uneven number of parentheses")
      else stack := tl !stack
    | _ -> ()
    done;
  !stack = []
in
separate_paren_groups

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:20: Unbound value "prefix" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
  let open String in
  match paren_string with
  | "" -> []
  | _ when is_valid_group paren_string -> [paren_string]
  | _ ->
    let open_idx = index paren_string '(' in
    let close_idx = rindex paren_string ')' in
    let open_grp = sub paren_string 0 open_idx in
    let close_grp = sub paren_string close_idx (length paren_string - close_idx) in
    let nested_group = sub paren_string (open_idx + 1) (close_idx - open_idx - 1) in
    let remaining_string = sub paren_string (close_idx + 1) (length paren_string - close_idx - 1) in
    let nested_groups = separate_paren_groups nested_group in
    (open_grp :: nested_groups) @ (separate_paren_groups remaining_string)
and is_valid_group (paren_string : string) : bool =
  let open String in
  let stack = ref [] in
  let i = ref 0 in
  while !i < length paren_string do
    match get paren_string !i with
    | '(' -> stack := '(' :: !stack
    | ')' ->
      if !stack = [] then raise (Failure "Uneven number of parentheses")
      else stack := tl !stack
    | _ -> ()
    done;
  !stack = []
in
separate_paren_groups

