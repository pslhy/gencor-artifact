(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
let rec removezero_ip (ip : string) : string =
    let stripZeroes (str : string) : string = str.TrimStart [|'0'|]
    in 
    if ip.StartsWith ("0.") then
        (removezero_ip (stripZeroes ip)).(1..)
    else if ip.EndsWith (".0") then
        (removezero_ip (stripZeroes ip)).(0..(len = ip) - 2]
    else
        ip

let test_removezero_ip () =
    if removezero_ip "0.1.2.3" = ".1.2.3" then print_endline "Pass" else print_endline "Fail"
    if removezero_ip "1.2.0.3" = "1.2.0.3" then print_endline "Pass" else print_endline "Fail"
    if removezero_ip "1.2.3.0" = "1.2.3" then print_endline "Pass" else print_endline "Fail"
    if removezero_ip "0.0.0.0" = "" then print_endline "Pass" else print_endline "Fail"
    if removezero_ip "1.2.3.4" = "1.2.3.4" then print_endline "Pass" else print_endline "Fail"

let () = test_removezero_ip ()

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:61: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec removezero_ip (ip : string) : string =
    let stripZeroes (str : string) : string = str.TrimStart [|'0'|]
    in
    if ip.StartsWith ("0.") then
        (removezero_ip (stripZeroes ip)).[1..]
    else if ip.EndsWith (".0") then
        (removezero_ip (stripZeroes ip)).[0..(String.length ip) - 2]
    else
        ip

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:61: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec removezero_ip (ip : string) : string =
    let stripZeroes (str : string) : string = str.TrimStart([|'0'|])
    in
    if ip.StartsWith("0.") then
        (removezero_ip (stripZeroes ip)).[1..]
    else if ip.EndsWith(".0") then
        (removezero_ip (stripZeroes ip)).[0..(String.length ip) - 2]
    else
        ip

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:60: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec removezero_ip (ip : string) : string =
    let stripZeroes (str : string) : string = str.TrimStart ( [|'0'|] )
    in
    if ip.StartsWith ("0.") then
        (removezero_ip (stripZeroes ip)).[1..]
    else if ip.EndsWith (".0") then
        (removezero_ip (stripZeroes ip)).[0..(String.length ip) - 2]
    else
        ip

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:61: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec removezero_ip (ip : string) : string =
    let stripZeroes (str : string) : string = str.TrimStart '0'
    in
    if ip.StartsWith "0." then
        (removezero_ip (stripZeroes ip)).[1..]
    else if ip.EndsWith ".0" then
        (removezero_ip (stripZeroes ip)).[0..(String.length ip) - 2]
    else
        ip

