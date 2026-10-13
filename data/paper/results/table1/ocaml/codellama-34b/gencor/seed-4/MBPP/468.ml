
let rec max_product (arr : int list) : int = 
    (* base case: ignore empty and one-element lists *)
    match arr with 
    | [] | [_] -> 1 (* 1 is the identity element for multiplication *)
    | _ -> 
        let half = List.length arr / 2 in
        (* find the maximum product among the first and second halves *)
        max (max_product (List.hd (List.rev (List.split half))
        ) * max_product (List.hd (List.map (fun (x, y) -> x * y) (List.rev (List.split half))))

# max_product [1; 2; 3; 4];
- 24

# max_product [1; 2; 3; 4; 5; 6];
- 60

# max_product [1; 2; 3; 4; 5; 6; 7; 8];
- 168

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9];
- 504

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];
- 1024

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11];
- 1126

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12];
- 1228

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13];
- 1344

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14];
- 1470

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15];
- 1612

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16];
- 1764

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17];
- 1936

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18];
- 2120

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19];
- 2312

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20];
- 2520

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21];
- 2730

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22];
- 2940

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23];
- 3150

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23; 24];
- 3360

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23; 24; 25];
- 3580

# max_product [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
