class Pokemon {
    constructor(HP, ataque, defensa) {
        this.HP = HP;
        this.ataque = ataque;
        this.defensa = defensa;
        this.movimiento = "";
        this.nivel = 1;
        this.tipo = "";
    }

    fight() {
        throw new Error("No se especificó ningún movimiento");
    }

    canFly() {
        if (this.tipo === "") {
            throw new Error("No se especificó ningún tipo");
        } else {
            return this.tipo.includes("volar");
        }
    }
}

class Charizard extends Pokemon {
    constructor(HP, ataque, defensa, movimiento) {
        super(HP, ataque, defensa);
        this.movimiento = movimiento;
        this.tipo = "disparar/volar";
    }

    fight() {
        if (this.movimiento === "") {
            throw new Error("No se especificó ningún movimiento");
        } else {
            console.log(`Se está usando el movimiento ${this.movimiento}`);
            return this.ataque;
        }
    }
}

let charizard = new Charizard(100, 50, 30, "lanzar fuego");
try {
    console.log(charizard.canFly());
    console.log(charizard.fight());
} catch (error) {
    console.error(error.message);
}

