
let rec split (list : int list) : int list =
    match list with
    | [] -> []
    | x :: xs -> x :: (split xs)

let evens (list : int list) : int list =
    list |> split |> List.filter (fun x -> x mod 2 = 0)

let () =
    let result = evens [1; 2; 3; 4; 5; 6; 7; 8; 9; 10]
    List.iter (fun x -> print_endline (string_of_int x))
    |> ignore

min_int = 10;
max_int = 100;

let random_int () = min_int + (Random.float (max_int - min_int)) |> int_of_float in
let list_length = 100 in
let random_list = List.init list_length (fun _ -> random_int ()) in

let () = evens random_list |> List.iter (fun x -> print_endline (string_of_int x))

min_int = 10;
max_int = 100;

let random_int () = min_int + (Random.float (max_int - min_int)) |> int_of_float in
let list_length = 100 in
let random_list = List.init list_length (fun _ -> random_int ()) in

let () = evens random_list |> List.iter (fun x -> print_endline (string_of_int x))

min_int = 10;
max_int = 100;

let random_int () = min_int + (Random.float (max_int - min_int)) |> int_of_float in
let list_length = 100 in
let random_list = List.init list_length (fun _ -> random_int ()) in

let () = evens random_list |> List.iter (fun x -> print_endline (string_of_int x))

min_int = 10;
max_int = 100;

let random_int () = min_int + (Random.float (max_int - min_int)) |> int_of_float in
let list_length = 100 in
let random_list = List.init list_length (fun _ -> random_int ()) in

let () = evens random_list |> List.iter (fun x -> print_endline (string_of_int x))

min_int = 10;
max_int = 100;

let random_int () = min_int + (Random.float (max_int - min_int)) |> int_of_float in
let list_length = 100 in
let random_list = List.init list_length (fun _ -> random_int ()) in

let () = evens random_list |> List.iter (fun x -> print_endline (string_of_int x))

min_int = 10;
max_int = 100;

let random_int () = min_int + (Random.float (max_int - min_int)) |> int_of_float in
let list_length = 100 in
let random_list = List.init list_length (fun _ -> random_int ()) in

let () = evens random_list |> List.iter (fun x -> print_endline (string_of_int x))

min_int = 10;
max_int = 100;

let random_int () = min_int + (Random.float (max_int - min_int)) |> int_of_float in
let list_length = 100 in
let random_list = List.init list_length (fun _ -> random_int ()) in

let () = evens random_list |> List.iter (fun x -> print_endline (string_of_int x))

min_int = 10;
max_int = 100;

let random_int () = min_int + (Random.float (max_int - min_int)) |> int_of_float in
let list_length = 100 in
let random_list = List.init list_length (fun _ -> random_int ()) in

let () = evens random_list |> List.iter (fun x -> print_endline (string_of_int x))

min_int = 10;
max_int = 100;

let random_int () = min_int + (Random.float (max_int - min_int)) |> int_of_float in
let list_length = 100 in
let random_list = List.init list_length (fun _ -> random_int ()) in

let () = evens random_list |> List.iter (fun x -> print_endline (string_of_int x))

min_int = 10;
max_int = 100;

let random_int () = min_int + (Random.float (max_int - min_int)) |> int_of_float in
let list_length = 100 in
let random_list = List.init list_length (fun _ -> random_int ()) in

let () = evens random_list |> List.iter (fun x -> print_endline (

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find even numbers from a list of numbers. *)
